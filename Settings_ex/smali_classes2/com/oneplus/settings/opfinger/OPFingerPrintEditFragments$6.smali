.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

.field final synthetic val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p2, "val$fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 336
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-wrap0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 338
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 334
    return-void
.end method
