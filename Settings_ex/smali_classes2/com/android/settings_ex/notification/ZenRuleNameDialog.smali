.class public abstract Lcom/android/settings_ex/notification/ZenRuleNameDialog;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenRuleNameDialog"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mEditText:Landroid/widget/EditText;

.field private final mIsNew:Z

.field private final mOriginalRuleName:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/ZenRuleNameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mIsNew:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/ZenRuleNameDialog;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->DEBUG:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ruleName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mIsNew:Z

    .line 40
    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/CharSequence;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040222

    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f110400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    .line 43
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mIsNew:Z

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mIsNew:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0e0ea1

    .line 48
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/android/settings_ex/notification/ZenRuleNameDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings_ex/notification/ZenRuleNameDialog;)V

    const v3, 0x7f0e05c1

    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    const v2, 0x7f0e05c0

    .line 48
    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    .line 38
    return-void

    .end local v0    # "v":Landroid/view/View;
    :cond_1
    move v1, v3

    .line 39
    goto :goto_0

    .line 49
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    const v1, 0x7f0e0e9e

    goto :goto_1
.end method

.method private trimmedText()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract onOk(Ljava/lang/String;)V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 71
    return-void
.end method
