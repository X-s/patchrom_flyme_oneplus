.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 171
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerId:I
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerId:I
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->deleteOPFingerId(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
