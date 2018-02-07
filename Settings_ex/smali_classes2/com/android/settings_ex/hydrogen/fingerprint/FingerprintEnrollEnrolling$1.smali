.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$1;
.super Landroid/os/Handler;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 263
    return-void
.end method
