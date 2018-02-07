.class public final Lcom/android/settings_ex/support/SupportPhoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "SupportPhoneDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_PHONE:Ljava/lang/String; = "extra_phone"

.field public static final TAG:Ljava/lang/String; = "SupportPhoneDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings_ex/support/SupportPhone;)Lcom/android/settings_ex/support/SupportPhoneDialogFragment;
    .locals 3
    .param p0, "phone"    # Lcom/android/settings_ex/support/SupportPhone;

    .prologue
    .line 44
    new-instance v1, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/android/settings_ex/support/SupportPhoneDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_phone"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "extra_phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/support/SupportPhone;

    .line 73
    .local v3, "phone":Lcom/android/settings_ex/support/SupportPhone;
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v3}, Lcom/android/settings_ex/support/SupportPhone;->getDialIntent()Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    .local v1, "canDial":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 80
    const/16 v5, 0x1e7

    .line 79
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->dismiss()V

    .line 71
    return-void

    .line 75
    .end local v1    # "canDial":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "extra_phone"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/support/SupportPhone;

    .line 54
    .local v3, "phone":Lcom/android/settings_ex/support/SupportPhone;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const v7, 0x7f0e1042

    .line 54
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 57
    const v7, 0x7f0401b5

    const/4 v8, 0x0

    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "content":Landroid/view/View;
    const v6, 0x7f110305

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 59
    .local v4, "phoneNumberContainer":Landroid/view/View;
    const v6, 0x7f110306

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, "phoneView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 62
    new-instance v8, Ljava/util/Locale;

    iget-object v9, v3, Lcom/android/settings_ex/support/SupportPhone;->language:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v3, Lcom/android/settings_ex/support/SupportPhone;->number:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 61
    const v8, 0x7f0e1041

    .line 60
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "formattedPhoneNumber":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
