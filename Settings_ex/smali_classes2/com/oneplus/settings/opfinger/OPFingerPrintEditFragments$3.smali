.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
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
    .line 270
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get1(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get1(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 278
    const/4 v2, 0x1

    .line 277
    if-ne v1, v2, :cond_0

    .line 279
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get0(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 281
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 286
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get3(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
