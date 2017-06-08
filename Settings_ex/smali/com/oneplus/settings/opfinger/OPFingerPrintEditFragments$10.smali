.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

.field final synthetic val$mRenameDialog:Lcom/oneplus/app/OPAlertDialog;

.field final synthetic val$renameEdit:Lcom/oneplus/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Lcom/oneplus/widget/OPEditText;Lcom/oneplus/app/OPAlertDialog;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->val$renameEdit:Lcom/oneplus/widget/OPEditText;

    iput-object p3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->val$mRenameDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->val$renameEdit:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "renameText":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "renameText":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 355
    .restart local v0    # "renameText":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0190

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # setter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;
    invoke-static {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$502(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 364
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    # invokes: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameFingerPrint(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$700(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->val$mRenameDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    goto :goto_0
.end method
