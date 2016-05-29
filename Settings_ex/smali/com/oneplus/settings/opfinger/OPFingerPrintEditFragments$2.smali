.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->onResume()V
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
    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {}, Lcom/oneplus/fingerprints/service/FingerprintManager;->open()Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v2

    # setter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$102(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    :try_end_0
    .catch Lcom/oneplus/fingerprints/service/UnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "OPFingerPrintEditFragments"

    const-string v2, "open FingerprintManager error on OPFingerPrintEditFragments onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/UnsupportedException;->printStackTrace()V

    goto :goto_0
.end method
