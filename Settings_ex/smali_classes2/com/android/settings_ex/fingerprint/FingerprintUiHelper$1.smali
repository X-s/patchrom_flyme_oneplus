.class Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->-get0(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->-get1(Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    return-void
.end method
