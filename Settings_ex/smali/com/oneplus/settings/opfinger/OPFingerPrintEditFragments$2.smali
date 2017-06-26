.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "OPFingerPrintEditFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
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

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 191
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method
