.class Lcom/android/settings_ex/FingerprintAndPWD$2;
.super Ljava/lang/Object;
.source "FingerprintAndPWD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerprintAndPWD;->initFingerPrintDBManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerprintAndPWD;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerprintAndPWD;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$2;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$2;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$2;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v2}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;
    invoke-static {v0, v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$102(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;)Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$2;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-direct {v1}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;-><init>()V

    # setter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    invoke-static {v0, v1}, Lcom/android/settings_ex/FingerprintAndPWD;->access$202(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/settings/opfinger/OPFingerDataManager;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$2;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$200(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->saxCreateOPFingerToggleXML()Ljava/lang/String;

    .line 229
    return-void
.end method
