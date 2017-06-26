.class public Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# static fields
.field static final KEY_LABEL:Ljava/lang/String; = "l"

.field static final KEY_PKG:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 187
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "p"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "pkg":Ljava/lang/String;
    const-string v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0d7b

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0d7c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "summary":Ljava/lang/String;
    new-instance v5, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c02d9

    new-instance v7, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v7, p0, v2}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c02da

    new-instance v7, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "l"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 182
    return-object p0

    .line 180
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
