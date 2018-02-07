.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->-get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->showContinueView()V

    .line 330
    return-void
.end method
