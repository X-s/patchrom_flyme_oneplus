.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;
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

.field final synthetic val$mRenameDialog:Landroid/app/AlertDialog;

.field final synthetic val$renameEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$renameEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$mRenameDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$renameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "renameText":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09009a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # setter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$502(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerId:I
    invoke-static {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->updateOPFingerId(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
