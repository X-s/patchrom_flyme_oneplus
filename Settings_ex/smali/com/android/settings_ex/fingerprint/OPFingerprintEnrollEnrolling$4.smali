.class Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$4;
.super Ljava/lang/Object;
.source "OPFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->clearError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->access$000(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    return-void
.end method
