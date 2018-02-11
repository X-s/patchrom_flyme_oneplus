.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 151
    return-void
.end method
