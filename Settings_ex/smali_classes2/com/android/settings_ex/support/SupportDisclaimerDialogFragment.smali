.class public final Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;
.super Landroid/app/DialogFragment;
.source "SupportDisclaimerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "extra_account"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final TAG:Ljava/lang/String; = "SupportDisclaimerDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/accounts/Account;I)Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "type"    # I

    .prologue
    .line 52
    new-instance v1, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string/jumbo v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method private static stripUnderlines(Landroid/text/Spannable;)V
    .locals 8
    .param p0, "input"    # Landroid/text/Spannable;

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 111
    .local v3, "urls":[Landroid/text/style/URLSpan;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 112
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 113
    .local v2, "start":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 114
    .local v0, "end":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 115
    new-instance v6, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;-><init>(Ljava/lang/String;)V

    .line 116
    const/16 v7, 0x21

    .line 115
    invoke-interface {p0, v6, v2, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "end":I
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .end local v2    # "start":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    const/16 v1, 0x1e3

    .line 101
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 99
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 81
    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 83
    const/16 v5, 0x1e3

    .line 82
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f1102fe

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 90
    .local v2, "doNotShow":Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings_ex/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings_ex/overlay/SupportFeatureProvider;

    move-result-object v3

    .line 91
    .local v3, "supportFeatureProvider":Lcom/android/settings_ex/overlay/SupportFeatureProvider;
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3, v5, v4}, Lcom/android/settings_ex/overlay/SupportFeatureProvider;->setShouldShowDisclaimerDialog(Landroid/content/Context;Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, "bundle":Landroid/os/Bundle;
    const/16 v4, 0x1e4

    invoke-static {v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 95
    const-string/jumbo v4, "extra_account"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 94
    invoke-interface {v3, v5, v4, v6}, Lcom/android/settings_ex/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V

    .line 80
    return-void

    .line 91
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    const v6, 0x7f0e104c

    .line 62
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 64
    const v6, 0x104000a

    .line 62
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 65
    const/high16 v6, 0x1040000

    .line 62
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 66
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 67
    const v6, 0x7f0401b1

    const/4 v7, 0x0

    .line 66
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "content":Landroid/view/View;
    const v5, 0x7f1102fd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, "disclaimer":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings_ex/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings_ex/overlay/SupportFeatureProvider;

    move-result-object v4

    .line 72
    .local v4, "supportFeatureProvider":Lcom/android/settings_ex/overlay/SupportFeatureProvider;
    invoke-interface {v4}, Lcom/android/settings_ex/overlay/SupportFeatureProvider;->getDisclaimerStringResId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 73
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/android/settings_ex/support/SupportDisclaimerDialogFragment;->stripUnderlines(Landroid/text/Spannable;)V

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
