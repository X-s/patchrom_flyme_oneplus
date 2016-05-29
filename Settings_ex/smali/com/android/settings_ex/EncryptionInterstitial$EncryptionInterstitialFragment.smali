.class public Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# static fields
.field private static final ACCESSIBILITY_WARNING_DIALOG:I = 0x1


# instance fields
.field private mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 197
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 202
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    return-void

    .line 193
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 207
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 130
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez v1, :cond_0

    .line 131
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 139
    .end local v0    # "accEn":Z
    :goto_0
    return-void

    .line 134
    .restart local v0    # "accEn":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0

    .line 137
    .end local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 186
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 145
    :pswitch_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 149
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 160
    const v4, 0x7f090b19

    .line 161
    .local v4, "titleId":I
    const v2, 0x7f090b1c

    .line 166
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const-string v0, ""

    .line 178
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 151
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f090b18

    .line 152
    .restart local v4    # "titleId":I
    const v2, 0x7f090b1b

    .line 153
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 156
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f090b17

    .line 157
    .restart local v4    # "titleId":I
    const v2, 0x7f090b1a

    .line 158
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 175
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 83
    const v2, 0x7f040049

    .line 84
    .local v2, "layoutId":I
    const v6, 0x7f040049

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0f00b2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 87
    const v6, 0x7f0f00b3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 89
    const v6, 0x7f0f00b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_password_quality"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 95
    .local v4, "quality":I
    sparse-switch v4, :sswitch_data_0

    .line 108
    const v3, 0x7f090b10

    .line 109
    .local v3, "msgId":I
    const v1, 0x7f090b13

    .line 110
    .local v1, "enableId":I
    const v0, 0x7f090b16

    .line 113
    .local v0, "disableId":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 118
    iget-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_require_password"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 123
    return-object v5

    .line 97
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_0
    const v3, 0x7f090b0f

    .line 98
    .restart local v3    # "msgId":I
    const v1, 0x7f090b12

    .line 99
    .restart local v1    # "enableId":I
    const v0, 0x7f090b15

    .line 100
    .restart local v0    # "disableId":I
    goto :goto_0

    .line 103
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f090b0e

    .line 104
    .restart local v3    # "msgId":I
    const v1, 0x7f090b11

    .line 105
    .restart local v1    # "enableId":I
    const v0, 0x7f090b14

    .line 106
    .restart local v0    # "disableId":I
    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method
