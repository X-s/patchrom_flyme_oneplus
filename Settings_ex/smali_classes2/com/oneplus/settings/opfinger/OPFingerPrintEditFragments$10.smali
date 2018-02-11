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


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get7(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "renameText":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get2(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "renameText":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 421
    .restart local v0    # "renameText":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 422
    const v2, 0x7f0e02dc

    .line 423
    const/4 v3, 0x0

    .line 421
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-set0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 430
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-wrap1(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-set0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 436
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get4(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get6(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 412
    return-void
.end method
