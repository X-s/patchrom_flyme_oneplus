.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->-get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    return-void

    .line 665
    :cond_0
    return-void
.end method
