.class Lcom/android/settings_ex/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 525
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const v3, 0x7f04004c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 529
    .local v2, "view":Landroid/view/View;
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->-get1(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 530
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0c0f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 539
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f1100fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const v3, 0x7f110100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 541
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 543
    const v3, 0x7f1100fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 545
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 547
    const v4, 0x7f0e0c0e

    .line 545
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 548
    const v4, 0x104000a

    .line 545
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 549
    const/high16 v4, 0x1040000

    .line 545
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 551
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 553
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 554
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    return-void

    .line 531
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->-get1(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0c13

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 533
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->-get1(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0c14

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 536
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->-get1(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0e0c15

    invoke-virtual {p1, v4, v3}, Lcom/android/settings_ex/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$UnlockDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    iget-object v2, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 557
    return-void

    :cond_1
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 561
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 568
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 567
    return-void

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 572
    iget-boolean v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 573
    iput-boolean v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->-get0(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->-get0(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 577
    .local v0, "error":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1, v4}, Lcom/android/settings_ex/CredentialStorage;->-set1(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 579
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    .line 580
    const v2, 0x7f0e0c18

    .line 579
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->-wrap1(Lcom/android/settings_ex/CredentialStorage;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1, v4}, Lcom/android/settings_ex/CredentialStorage;->-set1(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 587
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    .line 588
    const v2, 0x7f0e0c16

    .line 587
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 591
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->-wrap2(Lcom/android/settings_ex/CredentialStorage;)V

    goto :goto_0

    .line 592
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/CredentialStorage;->-set1(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 595
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->-wrap2(Lcom/android/settings_ex/CredentialStorage;)V

    goto :goto_0

    .line 599
    .end local v0    # "error":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 571
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 564
    return-void
.end method
